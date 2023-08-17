.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;
    }
.end annotation


# instance fields
.field private final mColor:[I

.field private final mColorName:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mOnColorChangeListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

.field private mSelectedPosition:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mOnColorChangeListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$array;->folder_mark_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColor:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$array;->folder_mark_color_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColorName:[Ljava/lang/String;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColor:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    if-ge p2, v1, :cond_1

    aget v0, v0, p2

    if-ne p3, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    :cond_2
    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->initLayout(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColorName:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mOnColorChangeListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

    return-object p0
.end method

.method public static colorSelectAnimation(Landroid/view/View;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v1, v6

    move-object v1, v0

    move v6, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3f68f5c3    # 0.91f

    const v4, 0x3eeb851f    # 0.46f

    const v5, 0x3fab851f    # 1.34f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    return-void
.end method

.method private initLayout(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_1:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_2:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_3:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_4:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_5:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_6:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_7:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v12, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_8:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v13, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_9:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_10:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->frame_mark_11:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    new-array v3, v1, [Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_0:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v4

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_1:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v5

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_2:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v6

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_3:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v7

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_4:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v8

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_5:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v9

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_6:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v10

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_7:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v11

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_8:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v12

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_9:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v13

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_10:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v14

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view_11:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v15, 0xb

    aput-object v1, v3, v15

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_0:I

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    aput-object v14, v1, v4

    iget-object v14, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v15, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_1:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    aput-object v14, v1, v5

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_2:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v6

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_3:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v7

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_4:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v8

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_5:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v9

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_6:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v10

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_7:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v11

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_8:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v12

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_9:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v1, v13

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_10:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v7, 0xa

    aput-object v5, v1, v7

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_selected_11:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v7, 0xb

    aput-object v5, v1, v7

    move v5, v4

    :goto_0
    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColor:[I

    array-length v7, v7

    div-int/2addr v7, v6

    if-ge v5, v7, :cond_2

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$drawable;->category_mark_color_shape:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColor:[I

    aget v8, v8, v5

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    aget-object v8, v3, v5

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    aget-object v7, v3, v5

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    aget-object v7, v1, v5

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget v7, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    if-ne v7, v5, :cond_1

    if-nez p1, :cond_1

    aget-object v7, v1, v5

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v7, v2, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColorName:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    aget-object v7, v1, v5

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v7, v2, v5

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColorName:[Ljava/lang/String;

    aget-object v8, v8, v5

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    aget-object v7, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    aget-object v7, v2, v5

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;

    invoke-direct {v8, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;[Landroid/widget/ImageView;[Landroid/widget/FrameLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v7, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    aget-object v7, v1, v5

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$2;

    invoke-direct {v8, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getSelectedColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mColor:[I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mSelectedPosition:I

    aget v0, v0, v1

    return v0
.end method

.method public setOnColorChangeListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->mOnColorChangeListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

    return-void
.end method
