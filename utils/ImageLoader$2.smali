.class Lcom/aee/sport/magicam/utils/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ImageLoader;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ImageLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$2;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$2;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ImageLoader;->access$1(Lcom/aee/sport/magicam/utils/ImageLoader;)V

    .line 60
    return-void
.end method
