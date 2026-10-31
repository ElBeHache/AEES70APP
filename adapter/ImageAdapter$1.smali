.class Lcom/aee/sport/magicam/adapter/ImageAdapter$1;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/adapter/ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iput p2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-static {v2}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->access$1(Lcom/aee/sport/magicam/adapter/ImageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-object v2, v2, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    iget v3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileAttr;

    iget-object v3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-object v3, v3, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    iget v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/bean/FileAttr;->setSelected(Z)V

    .line 126
    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-object v2, v2, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    iget v3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 125
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-object v2, v2, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    iget v3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 133
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-static {v2}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->access$2(Lcom/aee/sport/magicam/adapter/ImageAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    invoke-static {v3, v5}, Lcom/aee/sport/magicam/bean/FileAttr;->getSpecifiedFileAttr(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->videoFiles:Ljava/util/List;

    .line 137
    const-string v2, "position"

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/aee/sport/magicam/AeeApplication;->videoFiles:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/aee/sport/magicam/bean/FileAttr;->getPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :goto_2
    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-static {v2}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->access$2(Lcom/aee/sport/magicam/adapter/ImageAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->videoFiles:Ljava/util/List;

    .line 142
    const-string v2, "position"

    iget v3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;->val$position:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method
