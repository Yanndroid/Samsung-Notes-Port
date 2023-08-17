.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0x9

    if-lt v2, v1, :cond_0

    return v4

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    return v0

    :cond_2
    move v1, v4

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
