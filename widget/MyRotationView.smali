.class public Lcom/aee/sport/magicam/widget/MyRotationView;
.super Landroid/view/View;
.source "MyRotationView.java"


# instance fields
.field private final HALF:F

.field private bg:Landroid/graphics/Bitmap;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmaps:[Landroid/graphics/Bitmap;

.field private canvasHeight:I

.field private canvasWidth:I

.field private centerX:I

.field private centerY:I

.field private det:F

.field filter:Landroid/graphics/PaintFlagsDrawFilter;

.field private localRemote:I

.field private logo_0:Landroid/graphics/Bitmap;

.field private logo_1:Landroid/graphics/Bitmap;

.field private logo_2:Landroid/graphics/Bitmap;

.field private logo_3:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private maginLeft:F

.field private myCanvas:Landroid/graphics/Canvas;

.field private paint:Landroid/graphics/Paint;

.field private r:I

.field private startDegrees:F

.field private testPic:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->HALF:F

    .line 32
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    .line 33
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    .line 34
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerX:I

    .line 35
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerY:I

    .line 36
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->startDegrees:F

    .line 46
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->det:F

    .line 50
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    .line 71
    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    .line 77
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    .line 95
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    .line 96
    const v0, 0x7f020085

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/widget/MyRotationView;->init(I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->HALF:F

    .line 32
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    .line 33
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    .line 34
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerX:I

    .line 35
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerY:I

    .line 36
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    .line 41
    iput v4, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->startDegrees:F

    .line 46
    iput v5, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->det:F

    .line 50
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    .line 71
    iput v3, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    .line 77
    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    .line 81
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    .line 82
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/aee/sport/magicam/R$styleable;->myRoute:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->startDegrees:F

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->det:F

    .line 85
    const/4 v1, 0x2

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    .line 86
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    iget v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    invoke-direct {p0, v1}, Lcom/aee/sport/magicam/widget/MyRotationView;->init(I)V

    .line 91
    return-void
.end method

.method private getMaxDiameter()I
    .locals 13

    .prologue
    .line 133
    const/4 v5, 0x0

    .line 135
    .local v5, "maxD":I
    :try_start_0
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    array-length v7, v9

    .line 137
    .local v7, "size":I
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    .local v0, "bgWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 159
    iget v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    invoke-static {v9, v10}, Lcom/aee/sport/magicam/widget/MyRotationView;->min(II)I

    move-result v9

    invoke-static {v9, v5}, Lcom/aee/sport/magicam/widget/MyRotationView;->min(II)I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    .end local v0    # "bgWidth":I
    .end local v4    # "i":I
    .end local v7    # "size":I
    :goto_1
    return v9

    .line 142
    .restart local v0    # "bgWidth":I
    .restart local v4    # "i":I
    .restart local v7    # "size":I
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v4

    invoke-virtual {p0, v9, v0}, Lcom/aee/sport/magicam/widget/MyRotationView;->imageCrop(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, "bt":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    aput-object v1, v9, v4

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 145
    .local v8, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 149
    .local v3, "h":I
    mul-int v9, v8, v8

    mul-int v10, v3, v3

    add-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v9

    double-to-int v6, v9

    .line 150
    .local v6, "r":I
    if-le v6, v5, :cond_1

    .line 151
    move v5, v6

    .line 138
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "bgWidth":I
    .end local v1    # "bt":Landroid/graphics/Bitmap;
    .end local v3    # "h":I
    .end local v4    # "i":I
    .end local v6    # "r":I
    .end local v7    # "size":I
    .end local v8    # "w":I
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v9, v10

    .line 155
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v9, v10

    .line 156
    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->testPic:I

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v9, v10

    .line 157
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->getMaxDiameter()I

    move-result v9

    goto :goto_1
.end method

.method private init(I)V
    .locals 6
    .param p1, "testPic"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 103
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 104
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bg:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020096

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_0:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_1:Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_2:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_3:Landroid/graphics/Bitmap;

    .line 112
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v3, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->filter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    .line 118
    return-void
.end method

.method private initParam()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->getMaxDiameter()I

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    .line 123
    iget v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    .line 125
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->filter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 127
    return-void
.end method

.method public static min(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 173
    if-ge p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 304
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 306
    .local v4, "h":I
    int-to-float v0, v3

    div-float v8, p2, v0

    .line 307
    .local v8, "sx":F
    int-to-float v0, v4

    div-float v9, p3, v0

    .line 309
    .local v9, "sy":F
    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    int-to-float v0, v3

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 310
    move v9, v8

    .line 313
    :cond_0
    cmpl-float v0, p2, p3

    if-lez v0, :cond_1

    int-to-float v0, v3

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    .line 314
    move v8, v9

    .line 317
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 318
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 319
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 321
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public imageCrop(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reqWidth"    # I

    .prologue
    .line 287
    invoke-static {p1, p2, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    .line 180
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    .line 182
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    if-nez v8, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->initParam()V

    .line 188
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerX:I

    .line 189
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerY:I

    .line 191
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    array-length v4, v8

    .line 193
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 209
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    packed-switch v8, :pswitch_data_0

    .line 228
    :goto_2
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->canvasHeight:I

    int-to-float v10, v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/aee/sport/magicam/widget/MyRotationView;->big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    .line 233
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerX:I

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 234
    .local v6, "x":I
    iget v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->centerY:I

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v8, v9

    .line 240
    .local v7, "y":I
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v9, v6

    int-to-float v10, v7

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 247
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :cond_2
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v8, v3

    .line 195
    .local v0, "bt":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 196
    .local v5, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 198
    .local v2, "h":I
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->startDegrees:F

    int-to-float v10, v3

    iget v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->det:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 204
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    neg-int v9, v5

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    neg-int v10, v2

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "bt":Landroid/graphics/Bitmap;
    .end local v2    # "h":I
    .end local v5    # "w":I
    :pswitch_0
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_0:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_0:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_0:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 214
    :pswitch_1
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_1:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_1:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_1:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 217
    :pswitch_2
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_2:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    iget v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_2:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 220
    :pswitch_3
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->myCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_3:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    iget v11, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->r:I

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->logo_3:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->maginLeft:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDet(F)V
    .locals 0
    .param p1, "det"    # F

    .prologue
    .line 379
    iput p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->det:F

    .line 380
    return-void
.end method

.method public setImgs([Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 331
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    .line 332
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->initParam()V

    .line 333
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->invalidate()V

    .line 335
    :cond_0
    return-void
.end method

.method public setStartDegrees(F)V
    .locals 0
    .param p1, "startDegrees"    # F

    .prologue
    .line 370
    iput p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->startDegrees:F

    .line 372
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    .line 346
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->postInvalidate()V

    .line 347
    return-void
.end method

.method public declared-synchronized setTypeAndImgs(I[Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->bitmaps:[Landroid/graphics/Bitmap;

    .line 359
    iput p1, p0, Lcom/aee/sport/magicam/widget/MyRotationView;->localRemote:I

    .line 361
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyRotationView;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
