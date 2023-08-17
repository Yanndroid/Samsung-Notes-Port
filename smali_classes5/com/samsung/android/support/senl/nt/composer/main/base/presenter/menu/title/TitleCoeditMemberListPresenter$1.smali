.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;->updateCoeditMemberList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;)I
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter$1;->compare(Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;)I

    move-result p1

    return p1
.end method
