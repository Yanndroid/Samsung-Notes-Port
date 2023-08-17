.class final enum Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegexActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

.field public static final enum ADD_SPACE_IN_PHONE:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

.field public static final enum ADD_SPACE_IN_TELPHONE_FAX:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

.field public static final enum REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

.field public static final enum REPLACE_SQUARE_BRACKET:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    const-string v1, "REPLACE_COMMA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    new-instance v1, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    const-string v3, "REPLACE_SQUARE_BRACKET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->REPLACE_SQUARE_BRACKET:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    new-instance v3, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    const-string v5, "ADD_SPACE_IN_TELPHONE_FAX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->ADD_SPACE_IN_TELPHONE_FAX:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    new-instance v5, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    const-string v7, "ADD_SPACE_IN_PHONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->ADD_SPACE_IN_PHONE:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    return-object v0
.end method
