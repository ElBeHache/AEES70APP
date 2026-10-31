.class Lcom/aee/sport/magicam/adapter/CustomAdapter$1;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    iput p2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    iget v2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    iget v3, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-static {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    iget v1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_1
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;->val$position:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
