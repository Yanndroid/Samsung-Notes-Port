.class Lcom/samsung/android/support/senl/nt/word/base/OfficeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->exportContinuousPage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$3;->this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$3;->compare(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    return p1
.end method
