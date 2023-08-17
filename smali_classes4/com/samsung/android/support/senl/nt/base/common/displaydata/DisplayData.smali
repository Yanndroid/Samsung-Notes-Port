.class public Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion1;,
        Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion0;,
        Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHAR_SEQUENCE_CREATOR_VERSION_1:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR_VERSION_1:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field public static final TASK:I = 0x3e9

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb


# instance fields
.field public mSpannableString:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion0;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion0;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreatorVersion1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CHAR_SEQUENCE_CREATOR_VERSION_1:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CREATOR_VERSION_1:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->mSpannableString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->mSpannableString:Ljava/lang/CharSequence;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->mSpannableString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 7

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v0, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    aget-object v5, p1, v3

    instance-of v6, v5, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    :cond_0
    instance-of v6, v5, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/text/ParcelableSpan;

    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v5, p2, p3}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-direct {p0, p2, v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
