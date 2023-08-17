.class public final enum Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImplType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

.field public static final enum BIOMETRIC_PROMPT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

.field public static final enum IRIS_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

.field public static final enum OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    const-string v1, "OS_DEPENDENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    const-string v3, "BIOMETRIC_PROMPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->BIOMETRIC_PROMPT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    const-string v5, "IRIS_MANAGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->IRIS_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    return-object v0
.end method
