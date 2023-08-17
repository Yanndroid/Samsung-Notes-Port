.class Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "permissionData"
.end annotation


# instance fields
.field public normalPermission:Ljava/lang/String;

.field public privilegedPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->normalPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/NeedPermissionBuilder$permissionData;->privilegedPermission:Ljava/lang/String;

    return-void
.end method
