.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 692
    :pswitch_0
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate;I)V

    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate;I)V

    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$1(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "param":Ljava/lang/String;
    const-string v1, ""

    .line 700
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$2(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 715
    :goto_1
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v2, v0, v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$3(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :pswitch_3
    const-string v1, "photo_size"

    .line 703
    goto :goto_1

    .line 705
    :pswitch_4
    const-string v1, "video_resolution"

    .line 706
    goto :goto_1

    .line 708
    :pswitch_5
    const-string v1, "video_resolution"

    .line 709
    goto :goto_1

    .line 711
    :pswitch_6
    const-string v1, "photo_size"

    goto :goto_1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c007c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 700
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
