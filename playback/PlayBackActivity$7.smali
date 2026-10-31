.class Lcom/aee/sport/magicam/playback/PlayBackActivity$7;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity;->getFiles()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$7;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x1

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    .line 280
    const/4 v0, 0x0

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->GALLERY_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localFiles:Ljava/util/List;

    .line 282
    return-void
.end method
