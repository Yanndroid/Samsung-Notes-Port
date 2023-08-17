.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
    }
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x2

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_LINK_CARD:I = 0x4

.field public static final TYPE_TEXT:I = 0x0

.field public static final TYPE_WEB:I = 0x3

.field public static final TYPE_WEB_CLIP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
