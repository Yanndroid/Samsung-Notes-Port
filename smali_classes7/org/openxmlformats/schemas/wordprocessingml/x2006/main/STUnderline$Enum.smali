.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_DASH:I = 0x7

.field public static final INT_DASHED_HEAVY:I = 0x8

.field public static final INT_DASH_DOT_DOT_HEAVY:I = 0xe

.field public static final INT_DASH_DOT_HEAVY:I = 0xc

.field public static final INT_DASH_LONG:I = 0x9

.field public static final INT_DASH_LONG_HEAVY:I = 0xa

.field public static final INT_DOTTED:I = 0x5

.field public static final INT_DOTTED_HEAVY:I = 0x6

.field public static final INT_DOT_DASH:I = 0xb

.field public static final INT_DOT_DOT_DASH:I = 0xd

.field public static final INT_DOUBLE:I = 0x3

.field public static final INT_NONE:I = 0x12

.field public static final INT_SINGLE:I = 0x1

.field public static final INT_THICK:I = 0x4

.field public static final INT_WAVE:I = 0xf

.field public static final INT_WAVY_DOUBLE:I = 0x11

.field public static final INT_WAVY_HEAVY:I = 0x10

.field public static final INT_WORDS:I = 0x2

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/16 v1, 0x12

    new-array v2, v1, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "single"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "words"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "double"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "thick"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dotted"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dottedHeavy"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dash"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dashedHeavy"

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dashLong"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dashLongHeavy"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dotDash"

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dashDotHeavy"

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dotDotDash"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "dashDotDotHeavy"

    const/16 v6, 0xe

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "wave"

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "wavyHeavy"

    const/16 v6, 0x10

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "wavyDouble"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v4, "none"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    return-object v0
.end method
