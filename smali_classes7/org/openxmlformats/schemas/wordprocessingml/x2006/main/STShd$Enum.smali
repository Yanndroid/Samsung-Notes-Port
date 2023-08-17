.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_CLEAR:I = 0x2

.field public static final INT_DIAG_CROSS:I = 0x9

.field public static final INT_DIAG_STRIPE:I = 0x7

.field public static final INT_HORZ_CROSS:I = 0x8

.field public static final INT_HORZ_STRIPE:I = 0x4

.field public static final INT_NIL:I = 0x1

.field public static final INT_PCT_10:I = 0x11

.field public static final INT_PCT_12:I = 0x12

.field public static final INT_PCT_15:I = 0x13

.field public static final INT_PCT_20:I = 0x14

.field public static final INT_PCT_25:I = 0x15

.field public static final INT_PCT_30:I = 0x16

.field public static final INT_PCT_35:I = 0x17

.field public static final INT_PCT_37:I = 0x18

.field public static final INT_PCT_40:I = 0x19

.field public static final INT_PCT_45:I = 0x1a

.field public static final INT_PCT_5:I = 0x10

.field public static final INT_PCT_50:I = 0x1b

.field public static final INT_PCT_55:I = 0x1c

.field public static final INT_PCT_60:I = 0x1d

.field public static final INT_PCT_62:I = 0x1e

.field public static final INT_PCT_65:I = 0x1f

.field public static final INT_PCT_70:I = 0x20

.field public static final INT_PCT_75:I = 0x21

.field public static final INT_PCT_80:I = 0x22

.field public static final INT_PCT_85:I = 0x23

.field public static final INT_PCT_87:I = 0x24

.field public static final INT_PCT_90:I = 0x25

.field public static final INT_PCT_95:I = 0x26

.field public static final INT_REVERSE_DIAG_STRIPE:I = 0x6

.field public static final INT_SOLID:I = 0x3

.field public static final INT_THIN_DIAG_CROSS:I = 0xf

.field public static final INT_THIN_DIAG_STRIPE:I = 0xd

.field public static final INT_THIN_HORZ_CROSS:I = 0xe

.field public static final INT_THIN_HORZ_STRIPE:I = 0xa

.field public static final INT_THIN_REVERSE_DIAG_STRIPE:I = 0xc

.field public static final INT_THIN_VERT_STRIPE:I = 0xb

.field public static final INT_VERT_STRIPE:I = 0x5

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/16 v1, 0x26

    new-array v2, v1, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "nil"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "clear"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "solid"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "horzStripe"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "vertStripe"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "reverseDiagStripe"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "diagStripe"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "horzCross"

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "diagCross"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinHorzStripe"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinVertStripe"

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinReverseDiagStripe"

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinDiagStripe"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinHorzCross"

    const/16 v6, 0xe

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "thinDiagCross"

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct5"

    const/16 v6, 0x10

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct10"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct12"

    const/16 v6, 0x12

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct15"

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct20"

    const/16 v6, 0x14

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct25"

    const/16 v5, 0x15

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct30"

    const/16 v6, 0x16

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct35"

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x16

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct37"

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x17

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct40"

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x18

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct45"

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x19

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct50"

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct55"

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct60"

    const/16 v5, 0x1d

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct62"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct65"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct70"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct75"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x20

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct80"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct85"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x22

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct87"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x23

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct90"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x24

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    const-string v4, "pct95"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x25

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    move-result-object v0

    return-object v0
.end method
