.class public final Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_EA_VERT:I = 0x5

.field public static final INT_HORZ:I = 0x1

.field public static final INT_MONGOLIAN_VERT:I = 0x6

.field public static final INT_VERT:I = 0x2

.field public static final INT_VERT_270:I = 0x3

.field public static final INT_WORD_ART_VERT:I = 0x4

.field public static final INT_WORD_ART_VERT_RTL:I = 0x7

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/4 v1, 0x7

    new-array v2, v1, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "horz"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "vert"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "vert270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "wordArtVert"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "eaVert"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "mongolianVert"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v4, "wordArtVertRtl"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    return-object v0
.end method