.class final enum Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

.field public static final enum END:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

.field public static final enum LAST:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

.field public static final enum START:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->START:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    new-instance v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    const-string v3, "LAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->LAST:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    new-instance v3, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->END:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->$VALUES:[Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;
    .locals 1

    const-class v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;
    .locals 1

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->$VALUES:[Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    invoke-virtual {v0}, [Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    return-object v0
.end method
