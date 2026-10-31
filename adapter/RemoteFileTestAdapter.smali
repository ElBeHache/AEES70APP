.class public Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteFileTestAdapter.java"


# instance fields
.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->files:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x28

    .line 50
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "contentView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    return-object v0
.end method
