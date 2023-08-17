.class Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion1;
.super Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceCreatorVersion1"
.end annotation


# static fields
.field private static final TASK_SPAN_ID_VERSION_1:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public readSpanFromParcel(ILandroid/text/SpannableStringBuilder;Landroid/os/Parcel;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->readSpanFromParcel(ILandroid/text/SpannableStringBuilder;Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
