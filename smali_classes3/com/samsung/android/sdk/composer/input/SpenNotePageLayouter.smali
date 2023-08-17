.class public Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PAGE_LAYOUT_HORIZONTAL:I = 0x1

.field public static final PAGE_LAYOUT_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenNotePageLayouter"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->mNativeHandle:J

    return-void
.end method

.method private static native Native_requestLayout(J)V
.end method

.method private static native Native_setLayoutAll(JIIZZ)V
.end method


# virtual methods
.method public requestPageLayout()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->Native_requestLayout(J)V

    :cond_0
    return-void
.end method

.method public setNativeHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->mNativeHandle:J

    return-void
.end method

.method public setPageLayoutAll(IIZZ)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->Native_setLayoutAll(JIIZZ)V

    :cond_0
    return-void
.end method
