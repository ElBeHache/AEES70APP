.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 935
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iput-boolean v4, v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    .line 936
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iput-boolean v3, v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuousSelect:Z

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 968
    :goto_0
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$8(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 969
    return-void

    .line 940
    :sswitch_0
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2, v4}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$4(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V

    .line 941
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$5(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 944
    :sswitch_1
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iput-boolean v3, v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    .line 946
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v3, "photo_cap_mode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 947
    .local v0, "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    const-string v2, "photo_cap_mode_nor"

    iput-object v2, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 948
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v3, "photo_cap_mode"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2, v4}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$6(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V

    .line 950
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$5(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 954
    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :sswitch_2
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v3, "photo_cap_mode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 955
    .local v1, "ckvf":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    const-string v2, "photo_cap_mode_fas"

    iput-object v2, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 956
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v3, "photo_cap_mode"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iput-boolean v4, v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    .line 958
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2, v4}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$7(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V

    .line 959
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$5(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 937
    :sswitch_data_0
    .sparse-switch
        0x7f0c0005 -> :sswitch_1
        0x7f0c0007 -> :sswitch_0
        0x7f0c007a -> :sswitch_2
    .end sparse-switch
.end method
