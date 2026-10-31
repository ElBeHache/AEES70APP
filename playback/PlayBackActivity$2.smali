.class Lcom/aee/sport/magicam/playback/PlayBackActivity$2;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$2;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Z)V
    .locals 1
    .param p1, "CheckState"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$2;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-static {v0, p1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity;Z)V

    .line 173
    return-void
.end method
