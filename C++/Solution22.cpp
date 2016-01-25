#include <iostream>
#include <cstddef>
using namespace std;  
class Node{
  public:
    int data;
    Node *left,*right;
    Node(int d){
      data = d;
      left = right = NULL;
    }
};

class Solution{
  public:
    Node* insert(Node* root, int data) {
      if(root==NULL){
          return new Node(data);
      } else {
        Node* cur;
        if(data<=root->data){
          cur=insert(root->left,data);
          root->left=cur;
        } else {
          cur=insert(root->right,data);
          root->right=cur;
        }

        return root;
      }
    }

    int getHeight(Node* root){
      int outcome, lOutcome, rOutcome;
      outcome = lOutcome = rOutcome = 0;

      if ( root->left == NULL && root->right == NULL )
        outcome++;

      Node* cur = root;
      lOutcome += getHeight(cur->left);
      rOutcome += getHeight(cur->right);

      if (rOutcome > lOutcome)
        outcome = rOutcome;
      else
        outcome = lOutcome;

      return outcome;
    }

};//End of Solution

int main(){
  Solution myTree;
  Node* root=NULL;
  int T,data;
  cin>>T;
  while(T-->0){
    cin>>data;
    root= myTree.insert(root,data);
  }
  int height= myTree.getHeight(root);
  cout<<height;
  return 0;
}
