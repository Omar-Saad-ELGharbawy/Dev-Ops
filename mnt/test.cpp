#include "gtest/gtest.h"

TEST(Basic, TestShouldPASS)
{
    EXPECT_EQ(1,1);
}

TEST(simple, Teststring)
{
    const char *str = "hello";
    EXPECT_EQ(str,"hello");
}
