.class Lcom/aee/sport/magicam/widget/SlipButtonItem$1;
.super Ljava/lang/Object;
.source "SlipButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/widget/SlipButtonItem;->SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/widget/SlipButtonItem;

.field private final synthetic val$l:Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/widget/SlipButtonItem;Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->this$0:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    iput-object p2, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->val$l:Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->this$0:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    invoke-static {v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->access$0(Lcom/aee/sport/magicam/widget/SlipButtonItem;)Lcom/aee/sport/magicam/widget/SlipButtonItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->this$0:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    invoke-static {v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->access$0(Lcom/aee/sport/magicam/widget/SlipButtonItem;)Lcom/aee/sport/magicam/widget/SlipButtonItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    .line 39
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->val$l:Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;

    invoke-interface {v0, v1}, Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;->OnChanged(Z)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->this$0:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    invoke-static {v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->access$0(Lcom/aee/sport/magicam/widget/SlipButtonItem;)Lcom/aee/sport/magicam/widget/SlipButtonItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    .line 44
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;->val$l:Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;

    invoke-interface {v0, v2}, Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;->OnChanged(Z)V

    goto :goto_0
.end method
