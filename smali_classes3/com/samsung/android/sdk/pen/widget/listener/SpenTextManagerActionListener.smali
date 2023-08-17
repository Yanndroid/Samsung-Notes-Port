.class public abstract Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_BULLET:I = 0x2

.field public static final TYPE_TEXT_OVER_QUE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 0

    return-void
.end method

.method public onHashTagAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHyperTextClicked(Ljava/lang/String;IILcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V
    .locals 0
    .param p4    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 0

    return-void
.end method

.method public onSelectionAreaLongPressed()V
    .locals 0

    return-void
.end method
