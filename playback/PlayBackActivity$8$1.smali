.class Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;->this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;->this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)Lcom/aee/sport/magicam/playback/PlayBackActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;->this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)Lcom/aee/sport/magicam/playback/PlayBackActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fturl:Ljava/lang/String;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;->this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)Lcom/aee/sport/magicam/playback/PlayBackActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fname:Ljava/lang/String;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;->this$1:Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)Lcom/aee/sport/magicam/playback/PlayBackActivity;

    move-result-object v2

    iget v2, v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->position:I

    invoke-static {v0, v1, v2}, Lcom/aee/sport/magicam/AeeApplication;->downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    return-void
.end method
