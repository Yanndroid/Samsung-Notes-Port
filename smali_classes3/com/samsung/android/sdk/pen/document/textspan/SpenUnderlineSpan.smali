.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.source "SourceFile"


# instance fields
.field private mUnderline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->mUnderline:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->mUnderline:Z

    return-void
.end method


# virtual methods
.method public isUnderlineStyleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->mUnderline:Z

    return v0
.end method

.method public setUnderlineStyleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->mUnderline:Z

    return-void
.end method
