import torch
import torch.nn as nn

class ACWA(nn.Module):
    def __init__(self, undirected=True, use_ACWA=True):
        super().__init__()
        assert use_ACWA, "ACWA must be used"
        # Unused parameters
        self.ACWA_ratio = torch.nn.Parameter(torch.tensor(0.0), requires_grad=False)
    
    def forward(self, x):
        return None
    
    def get_loss_link_pred(self, feed_dict,graphs, ACWA_embeddings=None):
        pos_score, neg_score = self.compute_sim(feed_dict,graphs, ACWA_embeddings)
        pos_loss = self.bceloss(pos_score, torch.ones_like(pos_score))
        neg_loss = self.bceloss(neg_score, torch.zeros_like(neg_score))
        graphloss = pos_loss + neg_loss
            
        return graphloss, pos_score.detach().sigmoid(), neg_score.detach().sigmoid()
    
    def score_eval(self,feed_dict,graphs, ACWA_embeddings=None):
        pos_score, neg_score = self.compute_sim(feed_dict,graphs, ACWA_embeddings)     
        return pos_score.sigmoid(),neg_score.sigmoid()
        
    def compute_sim(self,feed_dict,graphs, ACWA_embeddings=None):
        node_1, node_2, node_2_negative, _, _, _, time  = feed_dict.values()
        emb_source = ACWA_embeddings[node_1,:]
        emb_pos  = ACWA_embeddings[node_2,:]
        emb_neg = ACWA_embeddings[node_2_negative,:]
        pos_score = torch.sum(emb_source*emb_pos, dim=1)
        neg_score = torch.sum(emb_source*emb_neg, dim=1)
        return pos_score, neg_score
