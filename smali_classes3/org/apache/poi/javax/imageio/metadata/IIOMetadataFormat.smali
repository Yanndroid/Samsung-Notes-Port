.class public interface abstract Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHILD_POLICY_ALL:I = 0x1

.field public static final CHILD_POLICY_CHOICE:I = 0x3

.field public static final CHILD_POLICY_EMPTY:I = 0x0

.field public static final CHILD_POLICY_MAX:I = 0x5

.field public static final CHILD_POLICY_REPEAT:I = 0x5

.field public static final CHILD_POLICY_SEQUENCE:I = 0x4

.field public static final CHILD_POLICY_SOME:I = 0x2

.field public static final DATATYPE_BOOLEAN:I = 0x1

.field public static final DATATYPE_DOUBLE:I = 0x4

.field public static final DATATYPE_FLOAT:I = 0x3

.field public static final DATATYPE_INTEGER:I = 0x2

.field public static final DATATYPE_STRING:I = 0x0

.field public static final VALUE_ARBITRARY:I = 0x1

.field public static final VALUE_ENUMERATION:I = 0x10

.field public static final VALUE_LIST:I = 0x20

.field public static final VALUE_NONE:I = 0x0

.field public static final VALUE_RANGE:I = 0x2

.field public static final VALUE_RANGE_MAX_INCLUSIVE:I = 0xa

.field public static final VALUE_RANGE_MAX_INCLUSIVE_MASK:I = 0x8

.field public static final VALUE_RANGE_MIN_INCLUSIVE:I = 0x6

.field public static final VALUE_RANGE_MIN_INCLUSIVE_MASK:I = 0x4

.field public static final VALUE_RANGE_MIN_MAX_INCLUSIVE:I = 0xe


# virtual methods
.method public abstract canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
.end method

.method public abstract getAttributeDataType(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getAttributeDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAttributeEnumerations(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getAttributeListMaxLength(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getAttributeListMinLength(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getAttributeMaxValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeMinValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getAttributeValueType(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getChildNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getChildPolicy(Ljava/lang/String;)I
.end method

.method public abstract getElementDescription(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getElementMaxChildren(Ljava/lang/String;)I
.end method

.method public abstract getElementMinChildren(Ljava/lang/String;)I
.end method

.method public abstract getObjectArrayMaxLength(Ljava/lang/String;)I
.end method

.method public abstract getObjectArrayMinLength(Ljava/lang/String;)I
.end method

.method public abstract getObjectClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getObjectDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getObjectEnumerations(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public abstract getObjectMaxValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getObjectMinValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getObjectValueType(Ljava/lang/String;)I
.end method

.method public abstract getRootName()Ljava/lang/String;
.end method

.method public abstract isAttributeRequired(Ljava/lang/String;Ljava/lang/String;)Z
.end method
