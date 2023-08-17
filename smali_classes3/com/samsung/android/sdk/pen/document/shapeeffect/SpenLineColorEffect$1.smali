.class Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$1;->this$0:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;)I
    .locals 1

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;->color:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientColor;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientColor;->position:F

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;->color:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientColor;

    iget p2, p2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientColor;->position:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;

    check-cast p2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$1;->compare(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect$GradientContainer;)I

    move-result p1

    return p1
.end method
