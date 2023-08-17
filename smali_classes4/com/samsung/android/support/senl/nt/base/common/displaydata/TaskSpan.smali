.class public Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_BULLET:I = 0x14

.field public static final TASK_DONE:I = 0x2

.field public static final TASK_EMPTY:I = 0x8

.field public static final TASK_GROUP:I = 0x4

.field public static final TASK_NUMBER:I = 0xa

.field public static final TASK_SPAN_ZERO_WIDTH_SPACE:Ljava/lang/String; = "\u200b"

.field public static final TASK_TEXT:I = 0x28

.field public static final TASK_TODO:I = 0x1


# instance fields
.field private mNumber:I

.field private final mTaskStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mNumber:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mTaskStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mTaskStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mNumber:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mNumber:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public getTaskStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mTaskStatus:I

    return v0
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mNumber:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mTaskStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->mNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
