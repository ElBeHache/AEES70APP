.class Lcom/aee/sport/magicam/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/BaseActivity;->showMyProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/BaseActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 92
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 94
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "view":Landroid/view/View;
    invoke-static {v2, v1}, Lcom/aee/sport/magicam/BaseActivity;->access$2(Lcom/aee/sport/magicam/BaseActivity;Landroid/widget/FrameLayout;)V

    .line 99
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/BaseActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/BaseActivity;->access$3(Lcom/aee/sport/magicam/BaseActivity;Landroid/view/View;)V

    .line 100
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aee/sport/magicam/BaseActivity$1$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/BaseActivity$1$1;-><init>(Lcom/aee/sport/magicam/BaseActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/BaseActivity$1;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
