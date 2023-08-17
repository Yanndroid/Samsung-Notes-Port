.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;
.source "SourceFile"


# static fields
.field private static final TEXT_BOX_ALIGN_PREF_KEY:Ljava/lang/String; = "Text_box_default_align"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Text_box_default_align"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Text_box_default_align"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStoredValue()I
    .locals 1

    const-string v0, "Text_box_default_align"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getStoredValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
