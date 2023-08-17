.class public Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOUBLE_CHAR_I:Ljava/lang/String; = "^(\'?\"?)(\\|)(\'?)"

.field private static final GROUP_DOUBLE_CHAR_I:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PostProcessCorrection"

.field public static final patCharI:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\'?\"?)(\\|)(\'?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->patCharI:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctPipeVsI(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 15

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    move v7, v1

    :goto_2
    iget-object v8, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v9, v8

    if-ge v7, v9, :cond_8

    aget-object v8, v8, v7

    iget v9, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    const/16 v10, 0x49

    const-string v11, "I"

    const-string/jumbo v12, "|"

    const/4 v13, 0x1

    if-ne v9, v13, :cond_4

    iget-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v9, v7, 0x1

    iget-object v12, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v14, v12

    if-ge v9, v14, :cond_1

    aget-object v9, v12, v9

    iget-object v9, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v9, v1

    goto :goto_3

    :cond_1
    move v9, v13

    :goto_3
    add-int/lit8 v12, v7, -0x1

    if-ltz v12, :cond_3

    iget-object v14, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v12, v14, v12

    iget-object v12, v12, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    move v9, v1

    :cond_3
    if-eqz v9, :cond_7

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string v12, "Pipe replaced with I - condition 1"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz v8, :cond_7

    array-length v9, v8

    if-lez v9, :cond_7

    aget-object v8, v8, v1

    iput v10, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    goto :goto_5

    :cond_4
    iget-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string v12, "Pipe replaced with I - condition 2"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v1

    :goto_4
    iget-object v12, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_6

    iget-object v12, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x7c

    if-ne v12, v13, :cond_5

    iget-object v12, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz v12, :cond_5

    array-length v13, v12

    if-lez v13, :cond_5

    aget-object v12, v12, v9

    iput v10, v12, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    iget-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const-string v10, "\\|"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
