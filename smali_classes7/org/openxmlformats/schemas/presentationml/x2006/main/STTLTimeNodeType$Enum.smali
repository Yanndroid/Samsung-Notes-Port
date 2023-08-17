.class public final Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_AFTER_EFFECT:I = 0x3

.field public static final INT_AFTER_GROUP:I = 0x8

.field public static final INT_CLICK_EFFECT:I = 0x1

.field public static final INT_CLICK_PAR:I = 0x6

.field public static final INT_INTERACTIVE_SEQ:I = 0x5

.field public static final INT_MAIN_SEQ:I = 0x4

.field public static final INT_TM_ROOT:I = 0x9

.field public static final INT_WITH_EFFECT:I = 0x2

.field public static final INT_WITH_GROUP:I = 0x7

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/16 v1, 0x9

    new-array v2, v1, [Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "clickEffect"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "withEffect"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "afterEffect"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "mainSeq"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "interactiveSeq"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "clickPar"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "withGroup"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "afterGroup"

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v4, "tmRoot"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    return-object v0
.end method
