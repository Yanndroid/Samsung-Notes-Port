.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$PageComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$PageComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)I
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageIndex()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$PageComparator;->compare(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)I

    move-result p1

    return p1
.end method
