.class Lcom/aee/sport/magicam/playback/PlayBackActivity$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$1;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    .line 158
    const/4 v1, 0x0

    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->GALLERY_PATH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localFiles:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
