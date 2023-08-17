.class public final enum Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

.field public static final enum FirstTime:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

.field public static final enum FirstTimeAfterOSUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

.field public static final enum FirstTimeAfterVersionUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

.field public static final enum Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    const-string v1, "FirstTime"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTime:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    const-string v3, "FirstTimeAfterVersionUpdate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterVersionUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    const-string v5, "FirstTimeAfterOSUpdate"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterOSUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    const-string v7, "Normal"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object v0
.end method
