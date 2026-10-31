.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$5$1;
.super Ljava/lang/Object;
.source "InternetVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5$1;->this$1:Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5$1;->this$1:Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;)Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$7(Lcom/aee/sport/magicam/playback/InternetVideoActivity;Z)V

    .line 347
    return-void
.end method
