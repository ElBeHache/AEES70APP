.class Lcom/aee/sport/magicam/adapter/CustomAdapter$3;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/adapter/CustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    iput p2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->val$position:I

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 205
    iget-object v9, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v9}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$1(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->val$position:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileContent;

    .line 206
    .local v1, "fileCon":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "urlAdress":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 211
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v9

    iget-object v5, v9, Lcom/aee/sport/magicam/AeeApplication;->preFileslist:Ljava/util/List;

    .line 212
    .local v5, "li":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    const/4 v3, 0x0

    .line 213
    .local v3, "flag":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 221
    :goto_0
    if-nez v3, :cond_2

    .line 222
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v9

    iget-object v2, v9, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    .line 223
    .local v2, "fl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 231
    .end local v2    # "fl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "JPG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 232
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v9}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$2(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .restart local v4    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v9, "fileURL"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v9, "fileName"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v9, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v9}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$2(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void

    .line 213
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    .line 214
    .local v0, "fc":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v12

    const-string v11, "\\."

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v13

    const-string v11, "\\."

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    const/4 v3, 0x1

    .line 218
    goto/16 :goto_0

    .line 223
    .end local v0    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .restart local v2    # "fl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    .line 224
    .restart local v0    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v12

    const-string v11, "\\."

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v13

    const-string v11, "\\."

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    goto/16 :goto_1

    .line 234
    .end local v0    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .end local v2    # "fl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v9}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$2(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_2
.end method
