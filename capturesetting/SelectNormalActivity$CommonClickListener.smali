.class Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;
.super Ljava/lang/Object;
.source "SelectNormalActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const v1, 0x7f08007d

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 679
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v1, p1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;I)V

    .line 527
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$2(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 596
    :pswitch_0
    const-string v1, "\u754c\u9762\u672a\u8bbe\u8ba1"

    invoke-static {v1, p1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putInt(Ljava/lang/String;I)V

    .line 601
    :goto_1
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$7(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$8(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 602
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$8(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setup_system_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto :goto_0

    .line 529
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :pswitch_1
    const-string v1, "parameter_unit"

    invoke-static {v1, p1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 532
    :pswitch_2
    const-string v1, "preview_picture"

    invoke-static {v1, p1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 535
    :pswitch_3
    const-string v1, "disconnet_status"

    invoke-static {v1, p1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 538
    :pswitch_4
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "video_resolution"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :pswitch_5
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "video_fov"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    :pswitch_6
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "photo_size"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :pswitch_7
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "photo_shot_mode"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 556
    :pswitch_8
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "photo_selftimer"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :pswitch_9
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "photo_tlm"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 566
    :pswitch_a
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "setup_key_tone"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    :pswitch_b
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "setup_selflamp"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 576
    :pswitch_c
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "setup_osd"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :pswitch_d
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "setup_system_type"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :pswitch_e
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "language"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :pswitch_f
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const-string v2, "video_time_lapse"

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :cond_1
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$2;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto/16 :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
