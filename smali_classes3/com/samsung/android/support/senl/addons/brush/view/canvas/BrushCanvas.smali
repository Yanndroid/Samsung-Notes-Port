.class public Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;
.super Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;
.implements Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushCanvas;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 62\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00016B\u0011\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u001b\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB#\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0014\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001bH\u0016J\u0008\u0010 \u001a\u00020\u0015H\u0016J\u0012\u0010!\u001a\u00020\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010#\u001a\u00020\u001b2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u001bH\u0016J\u0012\u0010\'\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010\u0013H\u0016J(\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000cH\u0016J(\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000cH\u0016J\u0010\u00104\u001a\u00020\u00152\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00105\u001a\u00020\u00152\u0006\u0010/\u001a\u000200H\u0016R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;",
        "Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushCanvas;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mOnDocumentLoadedListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;",
        "mOnPreDrawListener",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "mPreviewImageViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;",
        "clearAll",
        "",
        "close",
        "getConfiguration",
        "Landroid/content/res/Configuration;",
        "initialize",
        "initializeDocModel",
        "",
        "docModel",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "isHScrollable",
        "isVScrollable",
        "requestReadyForSave",
        "setOnLoadedDocumentListener",
        "listener",
        "setPaintingDoc",
        "paintingDoc",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
        "isUpdate",
        "setPreviewImageViewModel",
        "previewImageViewModel",
        "setTouchMargin",
        "marginLeft",
        "marginTop",
        "marginRight",
        "marginBottom",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mOnDocumentLoadedListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPreviewImageViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas$Companion;

    const-string v0, "BrushCanvas"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->setPaintingDoc$lambda-2$lambda-1(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->setPaintingDoc$lambda-2(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)Z

    move-result p0

    return p0
.end method

.method private static final setPaintingDoc$lambda-2(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)Z
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw3/b;

    invoke-direct {v0, p0}, Lw3/b;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static final setPaintingDoc$lambda-2$lambda-1(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnDocumentLoadedListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreDraw @ DrawListener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnDocumentLoadedListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnDocumentLoadedListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;->onLoaded(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;->close()V

    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;->initialize()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$color;->brush_canvas_blank_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->setBlankColor(I)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public initializeDocModel(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)Z
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "docModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->getHeight()I

    move-result v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->getDocumentFilePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPaintingDoc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/addons/R$color;->brush_canvas_background_color:I

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setBackgroundColor(I)V

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->setDocument(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not matched document model! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isHScrollable()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "resources"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_height_fraction:I

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/brush/util/ResourceUtil;->getFloatRes(Landroid/content/res/Resources;I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->getZoomScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;->isHScrollable()Z

    move-result v0

    return v0
.end method

.method public isVScrollable()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "resources"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_height_fraction:I

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/brush/util/ResourceUtil;->getFloatRes(Landroid/content/res/Resources;I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->getZoomScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->getCanvasHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/AbsPaintingView;->isVScrollable()Z

    move-result v0

    return v0
.end method

.method public requestReadyForSave()V
    .locals 0

    return-void
.end method

.method public setOnLoadedDocumentListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnDocumentLoadedListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;

    return-void
.end method

.method public declared-synchronized setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Lw3/a;

    invoke-direct {v0, p0}, Lw3/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreviewImageViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mPreviewImageViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->setTouchMargin(IIII)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mPreviewImageViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->showCanvas()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->mPreviewImageViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->showPreview()V

    :cond_0
    return-void
.end method
