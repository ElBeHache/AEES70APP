.class public Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
.super Ljava/lang/Object;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageItemHolder"
.end annotation


# instance fields
.field public checked:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public isVideo:Landroid/widget/ImageView;

.field public progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
