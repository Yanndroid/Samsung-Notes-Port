.class public final enum Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

.field public static final enum other:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

.field public static final enum phone:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

.field public static final enum tablet:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    const-string v1, "phone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->phone:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    const-string v3, "tablet"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->tablet:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    new-instance v3, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    const-string v5, "other"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->other:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->$VALUES:[Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->$VALUES:[Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    return-object v0
.end method
