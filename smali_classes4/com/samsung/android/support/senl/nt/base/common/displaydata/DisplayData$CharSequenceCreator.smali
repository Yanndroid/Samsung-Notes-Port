.class Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->readSpanFromParcel(ILandroid/text/SpannableStringBuilder;Landroid/os/Parcel;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus span encoding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .locals 0

    new-array p1, p1, [Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public readSpanFromParcel(ILandroid/text/SpannableStringBuilder;Landroid/os/Parcel;)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    new-instance p1, Landroid/text/style/TtsSpan;

    invoke-direct {p1, p3}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Landroid/text/style/LocaleSpan;

    invoke-direct {p1, p3}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Landroid/text/style/EasyEditSpan;

    invoke-direct {p1, p3}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Landroid/text/style/SuggestionSpan;

    invoke-direct {p1, p3}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Landroid/text/Annotation;

    invoke-direct {p1, p3}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p1, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_8
    new-instance p1, Landroid/text/style/SubscriptSpan;

    invoke-direct {p1, p3}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_9
    new-instance p1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {p1, p3}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Landroid/text/style/TypefaceSpan;

    invoke-direct {p1, p3}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_b
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_c
    new-instance p1, Landroid/text/style/URLSpan;

    invoke-direct {p1, p3}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_d
    new-instance p1, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {p1, p3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_e
    new-instance p1, Landroid/text/style/QuoteSpan;

    invoke-direct {p1, p3}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_f
    new-instance p1, Landroid/text/style/BulletSpan;

    invoke-direct {p1, p3}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_10
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, p3}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_11
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1, p3}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_12
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1, p3}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_13
    new-instance p1, Landroid/text/style/ScaleXSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_14
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_15
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :pswitch_16
    new-instance p1, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {p1, p3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$CharSequenceCreator;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
