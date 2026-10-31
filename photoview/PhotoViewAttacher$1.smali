.class Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$1;->this$0:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    .line 134
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$1;->this$0:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->access$4(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$1;->this$0:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->access$4(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$1;->this$0:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->access$5(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 142
    :cond_0
    return-void
.end method
