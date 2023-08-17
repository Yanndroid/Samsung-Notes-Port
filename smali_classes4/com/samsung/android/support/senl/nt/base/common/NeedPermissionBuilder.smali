.class public Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->normalPermission:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->privilegedPermission:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->privilegedPermission:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->normalPermission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
