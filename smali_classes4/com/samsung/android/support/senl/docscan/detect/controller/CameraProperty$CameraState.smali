.class public final enum Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum CAPTURING:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum FINISH_DETECT:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum FOCUSING:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum OPENED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public static final enum WAIT_CONVERGENCE:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v1, "OPENED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->OPENED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v3, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v5, "PREVIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v5, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v7, "FOCUSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->FOCUSING:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v7, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v9, "CAPTURING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CAPTURING:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v9, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v11, "WAIT_CONVERGENCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->WAIT_CONVERGENCE:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    new-instance v11, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const-string v13, "FINISH_DETECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->FINISH_DETECT:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->$VALUES:[Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->$VALUES:[Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    return-object v0
.end method
