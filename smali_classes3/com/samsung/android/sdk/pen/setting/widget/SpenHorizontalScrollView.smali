.class public Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenHorizontalScrollView"


# instance fields
.field private mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->applyRoundClip(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadii([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->setCornerRadii([F)V

    return-void
.end method
