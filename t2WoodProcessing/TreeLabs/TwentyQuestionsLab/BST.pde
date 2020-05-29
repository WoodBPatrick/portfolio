class BST {
  TreeNode root;
  TreeNode current;

  public BST() {
    root=null;
  }
  TreeNode buildTree() {
    root=new TreeNode("big (left)  or small (right)?");
    //level two
    root.setLeft(new TreeNode("warm (left )or cold (right)?"));
    root.setRight(new TreeNode("warm (left )or cold (right)?"));
    root.setRight(new TreeNode("warm (left )or cold (right)?"));
    root.setLeft(new TreeNode("warm (left )or cold (right)?"));

    //level three left sub tree
    root.getLeft().setLeft(new TreeNode("Texas El Paso!"));
    root.getLeft().setRight(new TreeNode("U of Iowa!"));
    root.getRight().setLeft(new TreeNode("Stetson in Florida!"));
    root.getRight().setRight(new TreeNode("Coe College in Iowa!"));

    //level three right sub tree
    root.getRight().setRight(new TreeNode("Augsburg in Minneapolis!"));
    root.getRight().setLeft(new TreeNode("U of Arizona!"));
    root.getLeft().setLeft(new TreeNode("U of Austin, TX!"));
    root.getLeft().setRight(new TreeNode("UMN!"));
    current=root;
    return current;
  }
}
