.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "formulas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "handles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "imagedata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "shadow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "stroke"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "textbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "textpath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    const-string v1, "path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    check-cast v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElementInfo [mKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
