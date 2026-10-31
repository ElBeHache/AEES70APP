.class public Lcom/aee/sport/magicam/setting/CameraSettingActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "CameraSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;,
        Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;,
        Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;,
        Lcom/aee/sport/magicam/setting/CameraSettingActivity$ViewWifiClickListener;
    }
.end annotation


# instance fields
.field protected cameraClock:Ljava/lang/String;

.field private ckv:Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

.field private dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field private dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field protected dvInfo:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field private photoSelftimer:Ljava/lang/String;

.field private photoShotMode:Ljava/lang/String;

.field protected photoSize:Ljava/lang/String;

.field private photoStamp:Ljava/lang/String;

.field private photoTlm:Ljava/lang/String;

.field protected setupKeyTone:Ljava/lang/String;

.field private setupLoopBack:Ljava/lang/String;

.field protected setupOsd:Ljava/lang/String;

.field protected setupPoweroff:Ljava/lang/String;

.field protected setupSelflamp:Ljava/lang/String;

.field protected setupTime:Ljava/lang/String;

.field private tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

.field private tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

.field private tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

.field private vals:[Ljava/lang/String;

.field protected videoFlipRotate:Ljava/lang/String;

.field protected videoFov:Ljava/lang/String;

.field protected videoQuality:Ljava/lang/String;

.field protected videoQualitySettable:Z

.field protected videoResolution:Ljava/lang/String;

.field protected videoStamp:Ljava/lang/String;

.field protected videoStandard:Ljava/lang/String;

.field private videoTimeLapse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->ckv:Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoQuality:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFlipRotate:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStamp:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupOsd:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupPoweroff:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupTime:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->cameraClock:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoTimeLapse:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoStamp:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoTimeLapse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoTlm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSelftimer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getBaseInfo()V

    return-void
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/setting/CameraSettingActivity;I)V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->showNoticeDialog(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->disDialog()V

    return-void
.end method

.method static synthetic access$8(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->ckv:Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    return-void
.end method

.method static synthetic access$9(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->ckv:Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    return-object v0
.end method

.method private createCaptureList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 474
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v3}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, ""

    .line 476
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    const-string v3, "shot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    const-string v4, "shot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_shot_mode"

    invoke-static {v3, v0}, Lcom/aee/sport/magicam/utils/Params;->getNameFromTypeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private createList()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->createVideoList()V

    .line 359
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->createCaptureList()V

    .line 360
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->createParamList()V

    .line 361
    return-void
.end method

.method private createParamList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 572
    const-string v3, ""

    .line 573
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    .line 574
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    const-string v6, "sta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 575
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v10

    .line 581
    :goto_0
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v3}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    .line 584
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    const-string v6, "on2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 585
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v10

    .line 591
    :goto_1
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v3}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v9, v5}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v4

    .line 595
    .local v4, "viewLoopBack":Lbr/com/dina/ui/model/ViewItem;
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v5, v4}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 596
    invoke-virtual {v4}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c0092

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 597
    .local v0, "buttonLoopBack":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    new-instance v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/widget/SlipButtonItem;)V

    invoke-virtual {v0, v5}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V

    .line 632
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    const-string v6, "setup_loop_back_on_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 633
    invoke-virtual {v0, v8}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    .line 642
    :goto_2
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    .line 644
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    const-string v6, "pal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 645
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v9

    .line 651
    :goto_3
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "setup_system_type"

    invoke-static {v7, v3}, Lcom/aee/sport/magicam/utils/Params;->getNameFromTypeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v11, v7}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    .line 653
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "chs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 654
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v9

    .line 705
    :goto_4
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v3}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Z)V

    .line 711
    const-string v1, ""

    .line 712
    .local v1, "dvPidStr":Ljava/lang/String;
    const-string v2, ""

    .line 714
    .local v2, "dvVersion":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dvInfo:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 715
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dvInfo:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v2, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_5
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Z)V

    .line 720
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Z)V

    .line 722
    return-void

    .line 576
    .end local v0    # "buttonLoopBack":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    .end local v1    # "dvPidStr":Ljava/lang/String;
    .end local v2    # "dvVersion":Ljava/lang/String;
    .end local v4    # "viewLoopBack":Lbr/com/dina/ui/model/ViewItem;
    :cond_0
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    const-string v6, "med"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v8

    goto/16 :goto_0

    .line 579
    :cond_1
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v9

    goto/16 :goto_0

    .line 586
    :cond_2
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v8

    goto/16 :goto_1

    .line 589
    :cond_3
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v9

    goto/16 :goto_1

    .line 635
    .restart local v0    # "buttonLoopBack":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    .restart local v4    # "viewLoopBack":Lbr/com/dina/ui/model/ViewItem;
    :cond_4
    invoke-virtual {v0, v9}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    goto/16 :goto_2

    .line 646
    :cond_5
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    const-string v6, "nts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 647
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v8

    goto/16 :goto_3

    .line 649
    :cond_6
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    goto/16 :goto_3

    .line 655
    :cond_7
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "cht"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 656
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v8

    goto/16 :goto_4

    .line 657
    :cond_8
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 658
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v3, v5, v10

    goto/16 :goto_4

    .line 659
    :cond_9
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "ger"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 660
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 661
    :cond_a
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "fre"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 662
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 663
    :cond_b
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "ita"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 664
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 665
    :cond_c
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "spa"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 666
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 667
    :cond_d
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "por"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 668
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 669
    :cond_e
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "rus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 670
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 671
    :cond_f
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "jap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 672
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 673
    :cond_10
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "kor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 674
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x13

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 675
    :cond_11
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "cze"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 676
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x15

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 677
    :cond_12
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "gre"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 678
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 679
    :cond_13
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "dut"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 680
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 681
    :cond_14
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "tur"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 682
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 683
    :cond_15
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "hun"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 684
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 685
    :cond_16
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "dan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 686
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 687
    :cond_17
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "fin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 688
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 689
    :cond_18
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "nor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 690
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 691
    :cond_19
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "swe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 692
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 693
    :cond_1a
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "pol"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 694
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x12

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 695
    :cond_1b
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "ukr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 696
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x14

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 697
    :cond_1c
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "rom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 698
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x16

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 699
    :cond_1d
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    const-string v6, "svk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 700
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/16 v6, 0x17

    aget-object v3, v5, v6

    goto/16 :goto_4

    .line 703
    :cond_1e
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    goto/16 :goto_4

    .line 716
    .restart local v1    # "dvPidStr":Ljava/lang/String;
    .restart local v2    # "dvVersion":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_5
.end method

.method private createVideoList()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 367
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    const-string v6, "x0"

    const-string v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "P 0"

    const-string v7, "P "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v10, v5}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, ""

    .line 369
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    .line 370
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    const-string v4, "wid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v1, v3, v8

    .line 379
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v1}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v2

    .line 382
    .local v2, "viewBitRate":Lbr/com/dina/ui/model/ViewItem;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v3, v2}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 383
    invoke-virtual {v2}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0092

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 384
    .local v0, "buttonBitRate":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    new-instance v3, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/widget/SlipButtonItem;)V

    invoke-virtual {v0, v3}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V

    .line 419
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoQuality:Ljava/lang/String;

    const-string v4, "video_quality_sfi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 420
    invoke-virtual {v0, v9}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    .line 468
    :goto_1
    return-void

    .line 372
    .end local v0    # "buttonBitRate":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    .end local v2    # "viewBitRate":Lbr/com/dina/ui/model/ViewItem;
    :cond_1
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    const-string v4, "med"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    aget-object v1, v3, v9

    goto :goto_0

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    const-string v4, "nar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    goto :goto_0

    .line 376
    :cond_3
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    const-string v4, "zom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->vals:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    goto :goto_0

    .line 422
    .restart local v0    # "buttonBitRate":Lcom/aee/sport/magicam/widget/SlipButtonItem;
    .restart local v2    # "viewBitRate":Lbr/com/dina/ui/model/ViewItem;
    :cond_4
    invoke-virtual {v0, v8}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    goto :goto_1
.end method

.method private disDialog()V
    .locals 6

    .prologue
    .line 956
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    .line 1001
    const/4 v3, 0x1

    const v4, 0x7f0800a7

    const v5, 0x7f0800a8

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 956
    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 1002
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 1003
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 1004
    return-void
.end method

.method private getBaseInfo()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getInfo()V

    .line 143
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->init()V

    .line 170
    return-void
.end method

.method private getInfo()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v1, v3, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 178
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 179
    .local v2, "mapCon":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;>;"
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 183
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_0

    .line 184
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 187
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    .line 189
    :cond_1
    const-string v3, "video_fov"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 190
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_2

    .line 191
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 194
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    .line 196
    :cond_3
    const-string v3, "video_quality"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 197
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_4

    .line 198
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoQuality:Ljava/lang/String;

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoQuality:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 201
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoQuality:Ljava/lang/String;

    .line 203
    :cond_5
    const-string v3, "photo_size"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 204
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_6

    .line 205
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    .line 207
    :cond_6
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 208
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    .line 210
    :cond_7
    const-string v3, "get_dv_info"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dvInfo:Ljava/lang/String;

    .line 211
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dvInfo:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 212
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dvInfo:Ljava/lang/String;

    .line 214
    :cond_8
    const-string v3, "video_stamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 215
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_9

    .line 216
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStamp:Ljava/lang/String;

    .line 218
    :cond_9
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStamp:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 219
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStamp:Ljava/lang/String;

    .line 223
    :cond_a
    const-string v3, "photo_shot_mode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 224
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_b

    .line 225
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    .line 227
    :cond_b
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 228
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoShotMode:Ljava/lang/String;

    .line 239
    :cond_c
    const-string v3, "setup_loop_back"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 240
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_d

    .line 241
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    .line 243
    :cond_d
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupLoopBack:Ljava/lang/String;

    .line 251
    :cond_e
    const-string v3, "setup_key_tone"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 252
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_f

    .line 253
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    .line 255
    :cond_f
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 256
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    .line 258
    :cond_10
    const-string v3, "setup_selflamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 259
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_11

    .line 260
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    .line 262
    :cond_11
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 263
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    .line 265
    :cond_12
    const-string v3, "setup_osd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 266
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_13

    .line 267
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupOsd:Ljava/lang/String;

    .line 269
    :cond_13
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupOsd:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 270
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupOsd:Ljava/lang/String;

    .line 272
    :cond_14
    const-string v3, "setup_poweroff"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 273
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_15

    .line 274
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupPoweroff:Ljava/lang/String;

    .line 276
    :cond_15
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupPoweroff:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 277
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupPoweroff:Ljava/lang/String;

    .line 279
    :cond_16
    const-string v3, "setup_system_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 280
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_17

    .line 281
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    .line 283
    :cond_17
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 284
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    .line 294
    :cond_18
    const-string v3, "language"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 295
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_19

    .line 296
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    .line 298
    :cond_19
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 299
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    .line 301
    :cond_1a
    const-string v3, "video_time_lapse"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 302
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_1b

    .line 303
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoTimeLapse:Ljava/lang/String;

    .line 305
    :cond_1b
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoTimeLapse:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 306
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoTimeLapse:Ljava/lang/String;

    .line 308
    :cond_1c
    const-string v3, "video_stamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 309
    .restart local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_1d

    .line 310
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoStamp:Ljava/lang/String;

    .line 312
    :cond_1d
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoStamp:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 313
    const-string v3, ""

    iput-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoStamp:Ljava/lang/String;

    .line 316
    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :cond_1e
    return-void
.end method

.method private getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 7
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c0046

    .line 731
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 732
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 733
    .local v2, "view":Landroid/view/View;
    if-nez p1, :cond_1

    .line 734
    const v4, 0x7f03002e

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 736
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 737
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 738
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_0
    :goto_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 748
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3

    .line 740
    .end local v1    # "titleview":Landroid/widget/TextView;
    .end local v3    # "viewItem":Lbr/com/dina/ui/model/ViewItem;
    :cond_1
    const v4, 0x7f030029

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 742
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 743
    .restart local v1    # "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 744
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    .line 339
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    .line 340
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    .line 342
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 343
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 344
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 346
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->createList()V

    .line 347
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 348
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 349
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 351
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewRecordRettings:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewCaptureSetting:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->tableViewParamSetting:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 355
    return-void
.end method

.method private showNoticeDialog(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    const v4, 0x7f0800a7

    .line 1036
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;I)V

    .line 1096
    const/4 v3, 0x1

    const v5, 0x7f08007f

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 1036
    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 1097
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    invoke-virtual {v0, v4}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setTitle(I)V

    .line 1098
    const-string v6, ""

    .line 1099
    .local v6, "info":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1104
    :goto_0
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    invoke-virtual {v0, v6}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setInfo(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 1106
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->dialogView:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 1108
    return-void

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setContentView(I)V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 334
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getBaseInfo()V

    .line 322
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 323
    return-void
.end method
