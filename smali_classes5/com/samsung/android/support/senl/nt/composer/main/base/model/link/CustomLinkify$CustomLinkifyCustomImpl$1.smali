.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 0

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x40

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3
.end method
