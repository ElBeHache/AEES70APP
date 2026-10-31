.class Lcom/aee/sport/magicam/adapter/CustomAdapter$2;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    iput p2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->val$position:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter$2;)Lcom/aee/sport/magicam/adapter/CustomAdapter;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;

    iget v2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->val$position:I

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;-><init>(Lcom/aee/sport/magicam/adapter/CustomAdapter$2;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    return-void
.end method
