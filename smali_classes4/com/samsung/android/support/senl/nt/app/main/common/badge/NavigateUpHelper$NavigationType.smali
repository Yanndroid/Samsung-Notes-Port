.class final enum Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

.field public static final enum Drawer:Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

.field public static final enum NavigateUp:Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    const-string v1, "Drawer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;->Drawer:Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    const-string v3, "NavigateUp"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;->NavigateUp:Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper$NavigationType;

    return-object v0
.end method
