.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOC_BASE_WIDTH:F = 360.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPageVerticalPadding(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageVerticalPadding(I)V

    return-void
.end method
