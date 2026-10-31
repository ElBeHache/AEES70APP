.class public Lcom/aee/sport/magicam/softwareupdate/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;,
        Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2


# instance fields
.field private cancelUpdate:Z

.field private dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field private dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field private dialogView2:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field private infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

.field public isShow:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgress_text:Landroid/widget/TextView;

.field private mSavePath:Ljava/lang/String;

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->cancelUpdate:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isShow:Z

    .line 58
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$1;-><init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->progress:I

    return v0
.end method

.method static synthetic access$10(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->showDownloadDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->cancelUpdate:Z

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mProgress_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->installApk()V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView2:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->progress:I

    return-void
.end method

.method static synthetic access$9(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->cancelUpdate:Z

    return v0
.end method

.method private downloadApk()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;-><init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;)V

    invoke-virtual {v0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->start()V

    .line 350
    return-void
.end method

.method public static getContent(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 219
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 220
    const/16 v3, 0x1770

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 221
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    .local v0, "hasSDCard":Z
    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v3, 0x0

    .line 242
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 244
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 245
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "versionCode":I
    :goto_0
    return v3

    .line 247
    .restart local v3    # "versionCode":I
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    const-string v3, "1.0"

    .line 262
    .local v3, "versionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 267
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private installApk()V
    .locals 5

    .prologue
    .line 450
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mSavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object v2, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showDownloadDialog()V
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 318
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 319
    .local v3, "v":Landroid/view/View;
    const v0, 0x7f0c009e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    .line 320
    const v0, 0x7f0c009f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mProgress_text:Landroid/widget/TextView;

    .line 321
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;-><init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V

    .line 338
    const/4 v4, 0x3

    const v5, 0x7f080086

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;II)V

    .line 321
    iput-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView2:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 340
    invoke-direct {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->downloadApk()V

    .line 341
    return-void
.end method

.method private showNoticeDialog()V
    .locals 7

    .prologue
    const v4, 0x7f080082

    .line 283
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;-><init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V

    .line 300
    const/4 v3, 0x1

    const v5, 0x7f08007f

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 283
    iput-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 301
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    invoke-virtual {v0, v4}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setTitle(I)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "info":Ljava/lang/String;
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    invoke-virtual {v0, v6}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setInfo(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 305
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 310
    return-void
.end method


# virtual methods
.method public checkUpdate(Z)V
    .locals 5
    .param p1, "isShowInfo"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isUpdate()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isShow:Z

    if-eqz v1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->showNoticeDialog()V

    .line 100
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isUpdate()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 105
    if-eqz p1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    const v2, 0x7f08007e

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->show(Landroid/content/Context;I)V

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;->info(I)V

    .line 109
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/BadgeUtil;->resetBadgeCount(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isUpdate()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 117
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;->info(I)V

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isUpdate()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 123
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080081

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->show(Landroid/content/Context;I)V

    .line 124
    iget-object v1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;->info(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkUpdateCallback()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->checkUpdate(Z)V

    .line 142
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    invoke-interface {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;->info(I)V

    .line 143
    return-void
.end method

.method public checkUpdateCallback(Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;Z)V
    .locals 0
    .param p1, "infosend"    # Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;
    .param p2, "isShowInfo"    # Z

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->setInfoSendListenner(Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->checkUpdate(Z)V

    .line 153
    return-void
.end method

.method public isUpdate()I
    .locals 7

    .prologue
    .line 181
    :try_start_0
    iget-object v5, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    .line 182
    .local v4, "versionCode":I
    sget-object v5, Lcom/aee/sport/magicam/utils/Constants;->URL_UPLOAD_APP:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->getContent(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 185
    .local v1, "inStream":Ljava/io/InputStream;
    new-instance v2, Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;

    invoke-direct {v2}, Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .local v2, "service":Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;->parseXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :try_start_2
    iget-object v5, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 201
    .local v3, "serviceCode":I
    if-le v3, v4, :cond_0

    .line 203
    const/4 v5, 0x0

    .line 210
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "service":Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
    .end local v3    # "serviceCode":I
    .end local v4    # "versionCode":I
    :goto_0
    return v5

    .line 189
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "service":Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
    .restart local v4    # "versionCode":I
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    const/4 v5, 0x3

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "service":Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
    .end local v4    # "versionCode":I
    :catch_1
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const/4 v5, 0x2

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "service":Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
    .restart local v4    # "versionCode":I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setInfoSendListenner(Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;)V
    .locals 0
    .param p1, "infosend"    # Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->infosend:Lcom/aee/sport/magicam/softwareupdate/UpdateManager$InfoSend;

    .line 167
    return-void
.end method
